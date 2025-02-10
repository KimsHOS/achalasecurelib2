////
////  FaceRecognation.swift
////  achalasecure1
////
////  Created by EMRI on 27/01/25.
////
//
//func compareFaces(faces: [VNFaceObservation], originalImage: UIImage) {
//       do {
//           let achalaSecureCallback = AchalaSecureCallback(
//               onCompareSuccess: { [weak self] result, score in
//                   self?.hideProgress()
//                   print("result after compilation: \(result)")
//                   
//                   self?.achalaSecureResultModel.score = score
//                   self?.achalaSecureResultModel.bitmapResult = originalImage
//                   self?.achalaSecureResultModel.status = "SUCCESS"
//                   if self?.isRegistration == true {
//                       self?.achalaSecureResultModel.message = "Registered Successfully"
//                   } else {
//                       self?.achalaSecureResultModel.message = "Authentication Successful"
//                   }
//                   self?.finishCameraLauncher(result)
//               },
//               onCompareFailed: { [weak self] error in
//                   self?.achalaSecureResultModel.score = "0.0"
//                   self?.achalaSecureResultModel.bitmapResult = nil
//                   self?.achalaSecureResultModel.status = "FAILED"
//                   if self?.isRegistration == true {
//                       self?.achalaSecureResultModel.message = "Registered Failed \(error)"
//                   } else {
//                       self?.achalaSecureResultModel.message = "Authentication Failed \(error)"
//                   }
//                   self?.finishCameraLauncher(error)
//               }
//           )
//           
//           if facesList.isEmpty == false {
//               facesList.removeAll()
//           }
//           facesList = []
//           
//           if progressDialog == nil && faces.count == 1 {
//               let cameraPreview = runModel(faces: faces, originalBitmap: originalImage)
//               showProgress()
//               previewView.isHidden = true
//               cameraExecutor.async {
//                   self.facesList.append((self.userGid, cameraPreview))
//                   print("processImage: \(self.facesList.count)")
//                   
//                   let isMobileFaceNet = false
//                   if !isMobileFaceNet {
//                       if self.isRegistration {
//                           // Save bitmap or handle registration
//                           Comparison(viewController: self, originalBitmap: originalImage, facesList: self.facesList, achalaSecureCallback: achalaSecureCallback, model: self.model)
//                       } else {
//                           Comparison(viewController: self, originalBitmap: self.imageFromThePath, facesList: self.facesList, achalaSecureCallback: achalaSecureCallback, model: self.model)
//                       }
//                   } else {
//                       if self.isRegistration {
//                           // Save bitmap or handle registration
//                           let croppedFace = self.cropFaces(originalImage: originalImage, face: faces[0])
//                           self.faceCompare(face1: croppedFace, face2: croppedFace, achalaSecureCallback: achalaSecureCallback)
//                       } else {
//                           let croppedFace1 = self.cropFaces(originalImage: originalImage, face: faces[0])
//                           let realTimeOpts = FaceDetectorOptions(performanceMode: .accurate)
//                           let detector = FaceDetection.getClient(options: realTimeOpts)
//                           detector.process(image: self.imageFromThePath, rotation: 0) { result in
//                               switch result {
//                               case .success(let detectedFaces):
//                                   let croppedFace2 = self.cropFaces(originalImage: self.imageFromThePath, face: detectedFaces[0])
//                                   self.faceCompare(face1: croppedFace2, face2: croppedFace1, achalaSecureCallback: achalaSecureCallback)
//                               case .failure(let error):
//                                   // Handle failure
//                                   print("Face detection failed: \(error)")
//                               }
//                           }
//                       }
//                   }
//               }
//           }
//       } catch {
//           print("An error occurred during face comparison: \(error)")
//       }
//   }
