// MIT License
//
// Copyright (c) 2020 Mykola Morozov
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//
// https://github.com/mcmikecreations/nanoid_cpp

#pragma once

#include "settings.h"
#include <cstdint>
#include <limits>
#include <utility>

namespace NANOID_NAMESPACE
{
	class crypto_random_base
	{
	public:
		virtual void next_bytes(std::uint8_t* buffer, std::size_t size); //Cannot be pure virtual due to std::async semantics
		virtual ~crypto_random_base(){}
	};

	template <class _UniformRandomBitGenerator>
	class crypto_random : public crypto_random_base
	{
	private:
		_UniformRandomBitGenerator _generator;
	public:
		using result_type = std::uint32_t;

		crypto_random& operator=(const crypto_random& other) = delete;
		crypto_random(const crypto_random&) = delete;
		crypto_random() : _generator() {}
		template <class ..._Args>
		crypto_random(_Args... args) : _generator(std::forward<_Args>(args)...) {}

		static constexpr result_type(min)() {
			return _UniformRandomBitGenerator::min();
		}

		static constexpr result_type(max)() {
			return _UniformRandomBitGenerator::max();
		}

		result_type operator()() {
			return _generator();
		}

		void next_bytes(std::uint8_t* buffer, std::size_t size) override
		{
			std::size_t reps = (size / sizeof(result_type)) * sizeof(result_type);
			std::size_t i = 0;
			for (; i < reps; i += sizeof(result_type))
			{
				*(result_type*)(buffer + i) = operator()();
			}
			if (i == size) return;
			result_type last = operator()();
			for (; i < size; ++i)
			{
				*(buffer + i) = (std::uint8_t)((last >> (8 * (i - reps))));
			}
		}
	};
}