.class public abstract Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;
.super Landroid/os/Binder;
.source "IStorageEngineCallback.java"

# interfaces
.implements Lcn/nubia/cloud/storage/common/IStorageEngineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/storage/common/IStorageEngineCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.cloud.storage.common.IStorageEngineCallback"

.field static final TRANSACTION_onAddCloudDownloadTask:I = 0xe

.field static final TRANSACTION_onCancelCloudDownloadTask:I = 0x12

.field static final TRANSACTION_onCheckCloudFilesExit:I = 0x16

.field static final TRANSACTION_onCloudMatch:I = 0x14

.field static final TRANSACTION_onCopyFiles:I = 0x9

.field static final TRANSACTION_onDeleteFiles:I = 0x3

.field static final TRANSACTION_onDiffWithCursor:I = 0xc

.field static final TRANSACTION_onException:I = 0x15

.field static final TRANSACTION_onGetCloudDownloadTaskList:I = 0xf

.field static final TRANSACTION_onGetFileList:I = 0x6

.field static final TRANSACTION_onGetFileMeta:I = 0x5

.field static final TRANSACTION_onGetFileTaskListFinished:I = 0x13

.field static final TRANSACTION_onGetQuota:I = 0x2

.field static final TRANSACTION_onLogin:I = 0x1

.field static final TRANSACTION_onMakeDir:I = 0x4

.field static final TRANSACTION_onMoveFiles:I = 0x7

.field static final TRANSACTION_onQueryCloudDownloadTaskProgress:I = 0x11

.field static final TRANSACTION_onQueryCloudDownloadTaskStatus:I = 0x10

.field static final TRANSACTION_onRenameFiles:I = 0x8

.field static final TRANSACTION_onSearch:I = 0xa

.field static final TRANSACTION_onStreamWithMediaType:I = 0xd

.field static final TRANSACTION_onThumbnail:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.cloud.storage.common.IStorageEngineCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.cloud.storage.common.IStorageEngineCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "cn.nubia.cloud.storage.common.IStorageEngineCallback"

    if-eq p1, v0, :cond_14

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 346
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 333
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 336
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;

    .line 341
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onCheckCloudFilesExit(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 322
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 327
    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onException(ILjava/lang/String;)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 308
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 311
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;

    .line 316
    :cond_1
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onCloudMatch(Lcn/nubia/cloud/storage/common/bean/FileInfoRes;)V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 299
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 302
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onGetFileTaskListFinished(Ljava/util/List;)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 285
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 288
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;

    .line 293
    :cond_2
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onCancelCloudDownloadTask(Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 271
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 274
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryProgressRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryProgressRes;

    .line 279
    :cond_3
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onQueryCloudDownloadTaskProgress(Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryProgressRes;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 257
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 260
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;

    .line 265
    :cond_4
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onQueryCloudDownloadTaskStatus(Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 243
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 246
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/CloudDownloadListRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadListRes;

    .line 251
    :cond_5
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onGetCloudDownloadTaskList(Lcn/nubia/cloud/storage/common/bean/CloudDownloadListRes;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 229
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 232
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;

    .line 237
    :cond_6
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onAddCloudDownloadTask(Lcn/nubia/cloud/storage/common/bean/CloudDownloadRes;)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 215
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 218
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;

    .line 223
    :cond_7
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onStreamWithMediaType(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 201
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 204
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/DiffRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/DiffRes;

    .line 209
    :cond_8
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onDiffWithCursor(Lcn/nubia/cloud/storage/common/bean/DiffRes;)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 187
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 190
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;

    .line 195
    :cond_9
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onThumbnail(Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 173
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 176
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;

    .line 181
    :cond_a
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onSearch(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 159
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 162
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/FromToRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/FromToRes;

    .line 167
    :cond_b
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onCopyFiles(Lcn/nubia/cloud/storage/common/bean/FromToRes;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 145
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 148
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/FromToRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/FromToRes;

    .line 153
    :cond_c
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onRenameFiles(Lcn/nubia/cloud/storage/common/bean/FromToRes;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 131
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    .line 134
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/FromToRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/FromToRes;

    .line 139
    :cond_d
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onMoveFiles(Lcn/nubia/cloud/storage/common/bean/FromToRes;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 117
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    .line 120
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;

    .line 125
    :cond_e
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onGetFileList(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 103
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f

    .line 106
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/MetaRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/MetaRes;

    .line 111
    :cond_f
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onGetFileMeta(Lcn/nubia/cloud/storage/common/bean/MetaRes;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 89
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    .line 92
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;

    .line 97
    :cond_10
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onMakeDir(Lcn/nubia/cloud/storage/common/bean/FileInfoRes;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 75
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11

    .line 78
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/SimpleRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/SimpleRes;

    .line 83
    :cond_11
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onDeleteFiles(Lcn/nubia/cloud/storage/common/bean/SimpleRes;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 61
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12

    .line 64
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;

    .line 69
    :cond_12
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onGetQuota(Lcn/nubia/cloud/storage/common/bean/QuotaRes;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 47
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_13

    .line 50
    sget-object p1, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;

    .line 55
    :cond_13
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->onLogin(Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 42
    :cond_14
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
