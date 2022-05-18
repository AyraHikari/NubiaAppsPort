.class Lcom/hpplay/sdk/source/n$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/n$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    .line 534
    return-void
.end method


# virtual methods
.method public addPinCodeToLelinkServiceInfo(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1079
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1082
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1086
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1088
    return-void

    .line 1085
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1086
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public addQRCodeToLelinkServiceInfo(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1064
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1067
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1071
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1073
    return-void

    .line 1070
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1071
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public addVolume()V
    .locals 5

    .prologue
    .line 932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 935
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 937
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 943
    return-void

    .line 940
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public browse(ZZ)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 702
    :try_start_0
    const-string v2, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 703
    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 706
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 712
    return-void

    :cond_0
    move v2, v1

    .line 703
    goto :goto_0

    :cond_1
    move v0, v1

    .line 704
    goto :goto_1

    .line 709
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public canPlayLocalMedia(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1179
    :try_start_0
    const-string v4, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1180
    if-eqz p1, :cond_0

    .line 1181
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1187
    :goto_0
    iget-object v4, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v5, 0x26

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1188
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 1189
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1192
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1193
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1195
    return v0

    .line 1185
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1192
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1193
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 1189
    goto :goto_1
.end method

.method public canPlayScreen(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1155
    :try_start_0
    const-string v4, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1156
    if-eqz p1, :cond_0

    .line 1157
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1163
    :goto_0
    iget-object v4, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v5, 0x25

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1164
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 1165
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1168
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1169
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1171
    return v0

    .line 1161
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1168
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1169
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 1165
    goto :goto_1
.end method

.method public connect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 5

    .prologue
    .line 744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 747
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 748
    if-eqz p1, :cond_0

    .line 749
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 755
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 756
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 762
    return-void

    .line 753
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 759
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 769
    :try_start_0
    const-string v4, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 770
    if-eqz p1, :cond_0

    .line 771
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 777
    :goto_0
    iget-object v4, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 778
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 779
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 782
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 785
    return v0

    .line 775
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 782
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 783
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 779
    goto :goto_1
.end method

.method public getConnectInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 793
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 795
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 796
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 799
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    return-object v0

    .line 799
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    return-object v0
.end method

.method public getOption(I)I
    .locals 5

    .prologue
    .line 1264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1268
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1271
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1272
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1275
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    return v0

    .line 1275
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public initSdkWithUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 548
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 555
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 561
    return-void

    .line 558
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onAdClosed(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V
    .locals 5

    .prologue
    .line 1128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1131
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1132
    if-eqz p1, :cond_0

    .line 1133
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1134
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1139
    :goto_0
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1142
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1148
    return-void

    .line 1137
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1145
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onAdShow(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V
    .locals 5

    .prologue
    .line 1106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1109
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1110
    if-eqz p1, :cond_0

    .line 1111
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1117
    :goto_0
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1119
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1125
    return-void

    .line 1115
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1122
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 919
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 921
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 923
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 929
    return-void

    .line 926
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 927
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 907
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 909
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 915
    return-void

    .line 912
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public seekTo(I)V
    .locals 5

    .prologue
    .line 715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 718
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 721
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 727
    return-void

    .line 724
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setAuthListener(Lcom/hpplay/sdk/source/l;)V
    .locals 5

    .prologue
    .line 1046
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1049
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1050
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hpplay/sdk/source/l;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1051
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1052
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1058
    return-void

    .line 1050
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1055
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1056
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setConnectStatusListener(Lcom/hpplay/sdk/source/d;)V
    .locals 5

    .prologue
    .line 669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 672
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 673
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hpplay/sdk/source/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 674
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 675
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 681
    return-void

    .line 673
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 679
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setDebugAVListener(Lcom/hpplay/sdk/source/e;)V
    .locals 5

    .prologue
    .line 609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 612
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 613
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hpplay/sdk/source/e;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 614
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 615
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    return-void

    .line 613
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setDebugMode(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 567
    :try_start_0
    const-string v3, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 568
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 570
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 576
    return-void

    .line 573
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setDebugTimestamp(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 582
    :try_start_0
    const-string v3, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 583
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 585
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    return-void

    .line 588
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setDebugVideoFile(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 627
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 630
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 636
    return-void

    .line 633
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setDisplayListener(Lcom/hpplay/sdk/source/g;)V
    .locals 5

    .prologue
    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 642
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 643
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hpplay/sdk/source/g;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 644
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 645
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 649
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 651
    return-void

    .line 643
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 649
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setInteractiveListener(Lcom/hpplay/sdk/source/f;)V
    .locals 5

    .prologue
    .line 1199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1202
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1203
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hpplay/sdk/source/f;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1204
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1205
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1211
    return-void

    .line 1203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1208
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1209
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setLelinkPlayListenerListener(Lcom/hpplay/sdk/source/h;)V
    .locals 5

    .prologue
    .line 654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 657
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 658
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hpplay/sdk/source/h;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 659
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 660
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 666
    return-void

    .line 658
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 663
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 664
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setLelinkServiceInfoListener(Lcom/hpplay/sdk/source/b;)V
    .locals 5

    .prologue
    .line 594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 597
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hpplay/sdk/source/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 599
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 600
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 606
    return-void

    .line 598
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 603
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setLelinkServiceInfoOption(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1009
    :try_start_0
    const-string v4, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    if-eqz p2, :cond_0

    .line 1012
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1018
    :goto_0
    iget-object v4, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v5, 0x1d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1019
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 1020
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1023
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1024
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1026
    return v0

    .line 1016
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1023
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1024
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 1020
    goto :goto_1
.end method

.method public setLogCallback(Lcom/hpplay/sdk/source/j;)V
    .locals 5

    .prologue
    .line 1282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1285
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1286
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hpplay/sdk/source/j;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1287
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1288
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1291
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1294
    return-void

    .line 1286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1291
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setMute(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 892
    :try_start_0
    const-string v3, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 893
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 895
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 901
    return-void

    .line 898
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setOption(I[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 992
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 996
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1002
    return-void

    .line 999
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1000
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setParceResultListener(Lcom/hpplay/sdk/source/k;)V
    .locals 5

    .prologue
    .line 684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 687
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 688
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hpplay/sdk/source/k;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 689
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 690
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 696
    return-void

    .line 688
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 693
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setRelevantInfoListener(Lcom/hpplay/sdk/source/m;)V
    .locals 5

    .prologue
    .line 1214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1217
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1218
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hpplay/sdk/source/m;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1219
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1220
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1226
    return-void

    .line 1218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1223
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setSocketExceptionListener(Lcom/hpplay/sdk/source/o;)V
    .locals 5

    .prologue
    .line 1229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1232
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1233
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hpplay/sdk/source/o;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1234
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1235
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1241
    return-void

    .line 1233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1238
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setSystemApp(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1092
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1094
    :try_start_0
    const-string v3, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1095
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1097
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1103
    return-void

    .line 1100
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setVolume(I)V
    .locals 5

    .prologue
    .line 960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 963
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 966
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 972
    return-void

    .line 969
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public startMirrorForPlayerInfo(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 5

    .prologue
    .line 868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 871
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 872
    if-eqz p1, :cond_0

    .line 873
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 874
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 879
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 880
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 886
    return-void

    .line 877
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 883
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public startOnlineCheck(Lcom/hpplay/sdk/source/i;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hpplay/sdk/source/i;",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1033
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1034
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/hpplay/sdk/source/i;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1035
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1036
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1037
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1041
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1043
    return-void

    .line 1034
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1040
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1041
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public startPlayMedia(Ljava/lang/String;IZ)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 809
    :try_start_0
    const-string v3, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 814
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 818
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 820
    return-void

    .line 817
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 818
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public startPlayMediaForPlayerInfo(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 5

    .prologue
    .line 823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 826
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 827
    if-eqz p1, :cond_0

    .line 828
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 834
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 835
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    return-void

    .line 832
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 838
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 839
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public startPlayMediaImmed(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;IZ)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 847
    :try_start_0
    const-string v4, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 848
    if-eqz p1, :cond_0

    .line 849
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 855
    :goto_0
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    if-eqz p4, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v1, 0x13

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 859
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 865
    return-void

    .line 853
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 862
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 863
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 857
    goto :goto_1
.end method

.method public stopBrowse()V
    .locals 5

    .prologue
    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 733
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 735
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 741
    return-void

    .line 738
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 739
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public stopPlay()V
    .locals 5

    .prologue
    .line 975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 976
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 978
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 979
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 980
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 986
    return-void

    .line 983
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public subVolume()V
    .locals 5

    .prologue
    .line 946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 949
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 951
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 955
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    return-void

    .line 954
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 955
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public updatePCMData(III[BII)V
    .locals 5

    .prologue
    .line 1244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1247
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1249
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1252
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    iget-object v0, p0, Lcom/hpplay/sdk/source/n$a$a;->a:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1255
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1261
    return-void

    .line 1258
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
