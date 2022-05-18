.class public abstract Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;
.super Landroid/os/Binder;
.source "IStorageEngine.java"

# interfaces
.implements Lcn/nubia/cloud/storage/common/IStorageEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/storage/common/IStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/storage/common/IStorageEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.cloud.storage.common.IStorageEngine"

.field static final TRANSACTION_addCloudDownloadTask:I = 0x10

.field static final TRANSACTION_cancelCloudDownloadTask:I = 0x14

.field static final TRANSACTION_checkCloudFilesExit:I = 0x20

.field static final TRANSACTION_cloudMatch:I = 0x15

.field static final TRANSACTION_copyFiles:I = 0xc

.field static final TRANSACTION_deleteFiles:I = 0x4

.field static final TRANSACTION_diffWithCursor:I = 0xf

.field static final TRANSACTION_downloadFile:I = 0x18

.field static final TRANSACTION_getCloudDownloadTaskList:I = 0x11

.field static final TRANSACTION_getFileList:I = 0x7

.field static final TRANSACTION_getFileMeta:I = 0x6

.field static final TRANSACTION_getFileTaskList:I = 0x16

.field static final TRANSACTION_getMediaStreamList:I = 0x9

.field static final TRANSACTION_getQuota:I = 0x3

.field static final TRANSACTION_getStorageEngineVersion:I = 0x1f

.field static final TRANSACTION_loginPCS:I = 0x1

.field static final TRANSACTION_makeDir:I = 0x5

.field static final TRANSACTION_moveFiles:I = 0xa

.field static final TRANSACTION_pauseAllTask:I = 0x1c

.field static final TRANSACTION_pauseTask:I = 0x19

.field static final TRANSACTION_queryCloudDownloadTaskProgress:I = 0x13

.field static final TRANSACTION_queryCloudDownloadTaskStatus:I = 0x12

.field static final TRANSACTION_queryRemoteFileList:I = 0x8

.field static final TRANSACTION_removeAllTask:I = 0x1e

.field static final TRANSACTION_removeTask:I = 0x1b

.field static final TRANSACTION_renameFiles:I = 0xb

.field static final TRANSACTION_restartAllTask:I = 0x1d

.field static final TRANSACTION_restartTask:I = 0x1a

.field static final TRANSACTION_search:I = 0xd

.field static final TRANSACTION_setupWithConfig:I = 0x2

.field static final TRANSACTION_thumbnail:I = 0xe

.field static final TRANSACTION_uploadFile:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "cn.nubia.cloud.storage.common.IStorageEngine"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngine;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "cn.nubia.cloud.storage.common.IStorageEngine"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcn/nubia/cloud/storage/common/IStorageEngine;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/cloud/storage/common/IStorageEngine;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub$Proxy;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    move v0, p1

    move-object v1, p2

    move-object/from16 v10, p3

    const v2, 0x5f4e5446

    const-string v3, "cn.nubia.cloud.storage.common.IStorageEngine"

    const/4 v11, 0x1

    if-eq v0, v2, :cond_a

    const/4 v2, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 465
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 455
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 460
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->checkCloudFilesExit(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 447
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->getStorageEngineVersion()I

    move-result v0

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v11

    .line 436
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IFileTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IFileTaskCallback;

    move-result-object v1

    .line 441
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->removeAllTask(ILcn/nubia/cloud/storage/common/IFileTaskCallback;)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 425
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IFileTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IFileTaskCallback;

    move-result-object v1

    .line 430
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->restartAllTask(ILcn/nubia/cloud/storage/common/IFileTaskCallback;)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 414
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IFileTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IFileTaskCallback;

    move-result-object v1

    .line 419
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->pauseAllTask(ILcn/nubia/cloud/storage/common/IFileTaskCallback;)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 398
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    .line 407
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/IFileTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IFileTaskCallback;

    move-result-object v0

    .line 408
    invoke-virtual {p0, v4, v0}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->removeTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/storage/common/IFileTaskCallback;)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 382
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    .line 391
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/IFileTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IFileTaskCallback;

    move-result-object v0

    .line 392
    invoke-virtual {p0, v4, v0}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->restartTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/storage/common/IFileTaskCallback;)V

    .line 393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 366
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    .line 375
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/IFileTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IFileTaskCallback;

    move-result-object v0

    .line 376
    invoke-virtual {p0, v4, v0}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->pauseTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/storage/common/IFileTaskCallback;)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 355
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IFileTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IFileTaskCallback;

    move-result-object v1

    .line 360
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->downloadFile(Ljava/util/List;Lcn/nubia/cloud/storage/common/IFileTaskCallback;)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 344
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IFileTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IFileTaskCallback;

    move-result-object v1

    .line 349
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->uploadFile(Ljava/util/List;Lcn/nubia/cloud/storage/common/IFileTaskCallback;)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 333
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v0

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IFileTaskCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IFileTaskCallback;

    move-result-object v1

    .line 338
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->getFileTaskList(Lcn/nubia/cloud/storage/common/IStorageEngineCallback;Lcn/nubia/cloud/storage/common/IFileTaskCallback;)V

    .line 339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 315
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    .line 324
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 327
    invoke-virtual {p0, v4, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->cloudMatch(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;ILcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 304
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 309
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->cancelCloudDownloadTask(Ljava/lang/String;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 293
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 298
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->queryCloudDownloadTaskProgress(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 282
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 287
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->queryCloudDownloadTaskStatus(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 265
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v6, v11

    goto :goto_0

    :cond_4
    move v6, v2

    .line 275
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v7

    move-object v0, p0

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    .line 276
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->getCloudDownloadTaskList(IIIZLcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 246
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v12

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move-object v7, v8

    move-object v8, v12

    .line 259
    invoke-virtual/range {v0 .. v8}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->addCloudDownloadTask(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 235
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 240
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->diffWithCursor(Ljava/lang/String;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 218
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v6

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 229
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->thumbnail(Ljava/lang/String;IIILcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 201
    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v5, v11

    goto :goto_1

    :cond_5
    move v5, v2

    .line 209
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v6, v11

    goto :goto_2

    :cond_6
    move v6, v2

    .line 211
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v7

    move-object v0, p0

    move-object v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v6

    move-object v5, v7

    .line 212
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->search(Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 190
    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 195
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->copyFiles(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 179
    :pswitch_15
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 184
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->renameFiles(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 168
    :pswitch_16
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 173
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->moveFiles(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 153
    :pswitch_17
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 162
    invoke-virtual {p0, v0, v2, v3, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->getMediaStreamList(IIILcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 138
    :pswitch_18
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 147
    invoke-virtual {p0, v0, v2, v3, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->queryRemoteFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 123
    :pswitch_19
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 132
    invoke-virtual {p0, v0, v2, v3, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->getFileList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 110
    :pswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v2, v11

    .line 116
    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 117
    invoke-virtual {p0, v0, v2, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->getFileMeta(Ljava/lang/String;ZLcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 99
    :pswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 104
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->makeDir(Ljava/lang/String;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 88
    :pswitch_1c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v1

    .line 93
    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->deleteFiles(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 79
    :pswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->getQuota(Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 63
    :pswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 66
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    .line 72
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v4, v0}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->setupWithConfig(Landroid/os/Bundle;Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback;)V

    .line 74
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 47
    :pswitch_1f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 50
    sget-object v0, Lcn/nubia/cloud/storage/common/account/AuthReq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcn/nubia/cloud/storage/common/account/AuthReq;

    .line 56
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/IStorageEngineCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcn/nubia/cloud/storage/common/IStorageEngineCallback;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v4, v0}, Lcn/nubia/cloud/storage/common/IStorageEngine$Stub;->loginPCS(Lcn/nubia/cloud/storage/common/account/AuthReq;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    .line 42
    :cond_a
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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
