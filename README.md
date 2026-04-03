
#  Speech Signal Noise Reduction (Audio Denoising) using MATLAB

##  Project Overview

This project focuses on reducing noise from speech signals using MATLAB-based digital signal processing techniques. The primary objective is to enhance the clarity and quality of audio signals by removing unwanted disturbances such as background noise, electrical interference, and random signal fluctuations.

Audio denoising plays a crucial role in real-world applications like communication systems, voice assistants, hearing aids, and biomedical signal processing.

---

##  Objectives

* To understand the fundamentals of speech signal processing
* To implement noise reduction techniques using MATLAB
* To improve speech intelligibility and quality
* To analyze signals in both time and frequency domains

---

##  Key Concepts Used

* Digital Signal Processing (DSP)
* Frequency Domain Analysis (FFT)
* Filtering Techniques
* Noise Modeling
* Signal Smoothing

---

##  Techniques Implemented

### 1. Bandpass Filter

* Allows frequencies within the speech range (~300 Hz to 3400 Hz)
* Removes low-frequency and high-frequency noise

### 2. Notch Filter

* Eliminates specific unwanted frequencies (e.g., 50/60 Hz powerline noise)

### 3. Moving Average Filter

* Smoothens the signal by reducing random noise fluctuations

---

##  MATLAB Functions Used

* `audioread()` – Load audio signals
* `audiowrite()` – Save processed audio
* `sound()` – Playback audio
* `fft()` / `ifft()` – Frequency analysis
* `filter()` – Apply filters
* `butter()` / `designfilt()` – Filter design
* `smoothdata()` – Signal smoothing

---

##  Workflow

1. Load or generate a speech signal
2. Add noise (optional for testing)
3. Apply filtering techniques
4. Analyze results using plots and spectrograms
5. Compare original, noisy, and denoised signals

---

##  Applications

* Speech enhancement systems
* Noise reduction in mobile communication
* Voice recognition preprocessing
* Biomedical signal denoising (ECG, EEG)

---

##  Results

![image]()

The implemented filters successfully reduce noise and improve the clarity of speech signals. Each method has its advantages:

* Bandpass filter: Effective for general noise removal
* Notch filter: Best for eliminating specific frequency interference
* Moving average: Useful for smoothing

---

##  Future Scope

* Implementation of adaptive filters (LMS, RLS)
* Use of machine learning for intelligent denoising
* Real-time audio processing systems

---

## 📌 Conclusion

This project demonstrates how fundamental DSP techniques can be used to effectively reduce noise in speech signals. It provides a strong foundation for advanced audio processing and real-time communication applications.

---

