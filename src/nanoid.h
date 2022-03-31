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
#include "crypto_random.h"
#include <string>
#include <random>
#include <future>

namespace NANOID_NAMESPACE
{
	std::string generate();
	std::string generate(const std::string& alphabet);
	std::string generate(std::size_t size);
	std::string generate(const std::string& alphabet, std::size_t size);

	std::string generate(crypto_random_base& random);
	std::string generate(crypto_random_base& random, const std::string& alphabet);
	std::string generate(crypto_random_base& random, std::size_t size);
	std::string generate(crypto_random_base& random, const std::string& alphabet, std::size_t size);

	namespace impl
	{
		int clz32(int x);
	}
}