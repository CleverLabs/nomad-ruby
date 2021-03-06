require "spec_helper"

module Nomad
  describe Size do
    {
      -1 => {
        bits:       -1,
        bytes:      -0.125,
        kilobits:   -0.001,
        kilobytes:  -0.000125,
        megabits:   -1.0e-6,
        megabytes:  -1.25e-7,
        gigabits:   -1.0e-9,
        gigabytes:  -1.25e-10,
        terabits:   -1.0e-12,
        terabytes:  -1.25e-13,
        petabits:   -1.0e-15,
        petabytes:  -1.25e-16,
        exabits:    -1.0e-18,
        exabytes:   -1.25e-19,
        zettabits:  -1.0e-21,
        zettabytes: -1.25e-22,
        yottabits:  -1.0000000000000001e-24,
        yottabytes: -1.2500000000000001e-25,
        to_s:   "-1b"
      },

      0 => {
        bits:       0,
        bytes:      0,
        kilobits:   0,
        kilobytes:  0,
        megabits:   0,
        megabytes:  0,
        gigabits:   0,
        gigabytes:  0,
        terabits:   0,
        terabytes:  0,
        petabits:   0,
        petabytes:  0,
        exabits:    0,
        exabytes:   0,
        zettabits:  0,
        zettabytes: 0,
        yottabits:  0,
        yottabytes: 0,
        to_s:  "0b",
      },

      1 => {
        bits:       1,
        bytes:      0.125,
        kilobits:   0.001,
        kilobytes:  0.000125,
        megabits:   1.0e-6,
        megabytes:  1.25e-7,
        gigabits:   1.0e-9,
        gigabytes:  1.25e-10,
        terabits:   1.0e-12,
        terabytes:  1.25e-13,
        petabits:   1.0e-15,
        petabytes:  1.25e-16,
        exabits:    1.0e-18,
        exabytes:   1.25e-19,
        zettabits:  1.0e-21,
        zettabytes: 1.25e-22,
        yottabits:  1.0000000000000001e-24,
        yottabytes: 1.2500000000000001e-25,
        to_s:   "1b",
      },

      1_000 => {
        bits:       1.0e3,
        bytes:      1.25e2,
        kilobits:   1.0e0,
        kilobytes:  1.25e-1,
        megabits:   1.0e-3,
        megabytes:  1.25e-4,
        gigabits:   1.0e-6,
        gigabytes:  1.25e-7,
        terabits:   1.0e-9,
        terabytes:  1.25e-10,
        petabits:   1.0e-12,
        petabytes:  1.25e-13,
        exabits:    1.0e-15,
        exabytes:   1.25e-16,
        zettabits:  1.0e-18,
        zettabytes: 1.25e-19,
        yottabits:  1.0000000000000001e-21,
        yottabytes: 1.2500000000000001e-22,
        to_s:   "1kb",
      },

      1_000_000 => {
        bits:       1.0e6,
        bytes:      1.25e5,
        kilobits:   1.0e3,
        kilobytes:  1.25e2,
        megabits:   1.0e0,
        megabytes:  1.25e-1,
        gigabits:   1.0e-3,
        gigabytes:  1.25e-4,
        terabits:   1.0e-6,
        terabytes:  1.25e-7,
        petabits:   1.0e-9,
        petabytes:  1.25e-10,
        exabits:    1.0e-12,
        exabytes:   1.25e-13,
        zettabits:  1.0e-15,
        zettabytes: 1.25e-16,
        yottabits:  1.0e-18,
        yottabytes: 1.25e-19,
        to_s:   "1Mb",
      },

      1_000_000_000 => {
        bits:       1.0e9,
        bytes:      1.25e8,
        kilobits:   1.0e6,
        kilobytes:  1.25e5,
        megabits:   1.0e3,
        megabytes:  1.25e2,
        gigabits:   1.0e0,
        gigabytes:  1.25e-1,
        terabits:   1.0e-3,
        terabytes:  1.25e-4,
        petabits:   1.0e-6,
        petabytes:  1.25e-7,
        exabits:    1.0e-9,
        exabytes:   1.25e-10,
        zettabits:  1.0e-12,
        zettabytes: 1.25e-13,
        yottabits:  1.0e-15,
        yottabytes: 1.25e-16,
        to_s:   "1Gb",
      },

      1_000_000_000_000 => {
        bits:       1.0e12,
        bytes:      1.25e11,
        kilobits:   1.0e9,
        kilobytes:  1.25e8,
        megabits:   1.0e6,
        megabytes:  1.25e5,
        gigabits:   1.0e3,
        gigabytes:  1.25e2,
        terabits:   1.0e0,
        terabytes:  1.25e-1,
        petabits:   1.0e-3,
        petabytes:  1.25e-4,
        exabits:    1.0e-6,
        exabytes:   1.25e-7,
        zettabits:  1.0e-9,
        zettabytes: 1.25e-10,
        yottabits:  1.0e-12,
        yottabytes: 1.25e-13,
        to_s:   "1Tb",
      },

      1_000_000_000_000_000 => {
        bits:       1.0e15,
        bytes:      1.25e14,
        kilobits:   1.0e12,
        kilobytes:  1.25e11,
        megabits:   1.0e9,
        megabytes:  1.25e8,
        gigabits:   1.0e6,
        gigabytes:  1.25e5,
        terabits:   1.0e3,
        terabytes:  1.25e2,
        petabits:   1.0e0,
        petabytes:  1.25e-1,
        exabits:    1.0e-3,
        exabytes:   1.25e-4,
        zettabits:  1.0e-6,
        zettabytes: 1.25e-7,
        yottabits:  1.0e-9,
        yottabytes: 1.25e-10,
        to_s:   "1Pb",
      },

      1_000_000_000_000_000_000 => {
        bits:       1.0e18,
        bytes:      1.25e17,
        kilobits:   1.0e15,
        kilobytes:  1.25e14,
        megabits:   1.0e12,
        megabytes:  1.25e11,
        gigabits:   1.0e9,
        gigabytes:  1.25e8,
        terabits:   1.0e6,
        terabytes:  1.25e5,
        petabits:   1.0e3,
        petabytes:  1.25e2,
        exabits:    1.0e0,
        exabytes:   1.25e-1,
        zettabits:  1.0e-3,
        zettabytes: 1.25e-4,
        yottabits:  1.0e-6,
        yottabytes: 1.25e-7,
        to_s:   "1Eb",
      },

      1_000_000_000_000_000_000_000 => {
        bits:       1.0e21,
        bytes:      1.25e20,
        kilobits:   1.0e18,
        kilobytes:  1.25e17,
        megabits:   1.0e15,
        megabytes:  1.25e14,
        gigabits:   1.0e12,
        gigabytes:  1.25e11,
        terabits:   1.0e9,
        terabytes:  1.25e8,
        petabits:   1.0e6,
        petabytes:  1.25e5,
        exabits:    1.0e3,
        exabytes:   1.25e2,
        zettabits:  1.0e0,
        zettabytes: 1.25e-1,
        yottabits:  1.0e-3,
        yottabytes: 1.25e-4,
        to_s:   "1Zb",
      },

      1_000_000_000_000_000_000_000_000 => {
        bits:       1.0e24,
        bytes:      1.25e23,
        kilobits:   1.0e21,
        kilobytes:  1.25e20,
        megabits:   1.0e18,
        megabytes:  1.25e17,
        gigabits:   1.0e15,
        gigabytes:  1.25e14,
        terabits:   1.0e12,
        terabytes:  1.25e11,
        petabits:   1.0e9,
        petabytes:  1.25e8,
        exabits:    1.0e6,
        exabytes:   1.25e5,
        zettabits:  1.0e3,
        zettabytes: 1.25e2,
        yottabits:  1.0e0,
        yottabytes: 1.25e-1,
        to_s:   "1Yb",
      },

      1_234_567_891_011_121_314_151_617_181_920 => {
        bits:       1.2345678910111213e+30,
        bytes:      1.5432098637639016e+29,
        kilobits:   1.2345678910111213e+27,
        kilobytes:  1.5432098637639016e+26,
        megabits:   1.2345678910111213e+24,
        megabytes:  1.5432098637639017e+23,
        gigabits:   1.2345678910111212e+21,
        gigabytes:  1.5432098637639015e+20,
        terabits:   1.2345678910111212e+18,
        terabytes:  1.5432098637639014e+17,
        petabits:   1234567891011121.2,
        petabytes:  154320986376390.16,
        exabits:    1234567891011.1213,
        exabytes:   154320986376.39017,
        zettabits:  1234567891.0111213,
        zettabytes: 154320986.37639016,
        yottabits:  1234567.8910111212,
        yottabytes: 154320.98637639015,
        to_s:   "154321YB",
      },
    }.each do |i, list|
      list.sort.each do |k,v|
        describe "##{k}(#{i})" do
          it "returns #{v}" do
            instance = Size.new(i)
            result = instance.public_send(k)
            expect(result).to eq(v)
          end
        end
      end
    end

    describe "numeric" do
      it "behaves like a numeric" do
        instance = Size.new(100*Size::BIT)
        instance = instance + 100
        expect(instance).to eq(Size.new(200*Size::BIT))
      end
    end
  end
end
