part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  final String name;
  final String surname;
  final String patronymic;
  final String fullName;
  final String error;
  final String phoneNumber;
  final bool isProgress;
  final bool isEnable;
  final String avatarPath;
  final String regionId;

  const ProfileState({
    this.name = '',
    this.surname = '',
    this.patronymic = '',
    this.fullName = '',
    this.error = '',
    this.phoneNumber = '',
    this.isProgress = false,
    this.isEnable = true,
    this.avatarPath = '',
    this.regionId = '',
  });

  ProfileState copyWith({
    String? name,
    String? surname,
    String? patronymic,
    String? fullName,
    String? error,
    String? phoneNumber,
    bool? isProgress,
    bool? isEnable,
    String? avatarPath,
    String? regionId,
  }) {
    return ProfileState(
      name: name ?? this.name,
      surname: surname ?? this.surname,
      patronymic: patronymic ?? this.patronymic,
      fullName: fullName ?? this.fullName,
      error: error ?? this.error,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      isProgress: isProgress ?? this.isProgress,
      isEnable: isEnable ?? this.isEnable,
      avatarPath: avatarPath ?? this.avatarPath,
      regionId: regionId ?? this.regionId,
    );
  }

  @override
  List<Object?> get props => [
        name,
        surname,
        patronymic,
        fullName,
        error,
        phoneNumber,
        isProgress,
        isEnable,
        avatarPath,
        regionId,
      ];
}
