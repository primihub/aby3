#pragma once
#include "network/channel_interface.h"
#include "cryptoTools/Common/Defines.h"
#include "cryptoTools/Common/BitVector.h"

namespace ph = primihub::link;
class SharedOT
{
public:
	oc::AES mAes;
	oc::u64 mIdx = -1;

	void setSeed(const oc::block& seed, oc::u64 seedIdx = 0);

	void send(
		ph::Channel& recver,
		oc::span<std::array<oc::i64,2>> msgs);

	void help(
		ph::Channel& recver,
		const oc::BitVector& choices);

	static void recv(
		ph::Channel& sender,
		ph::Channel& helper,
		const oc::BitVector& choices,
		oc::span<oc::i64> recvMsgs);


	static std::future<void> asyncRecv(
		ph::Channel& sender,
		ph::Channel& helper,
		oc::BitVector&& choices,
		oc::span<oc::i64> recvMsgs);
};
