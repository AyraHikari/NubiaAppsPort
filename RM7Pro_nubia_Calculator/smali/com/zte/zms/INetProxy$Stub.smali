.class public abstract Lcom/zte/zms/INetProxy$Stub;
.super Landroid/os/Binder;
.source "INetProxy.java"

# interfaces
.implements Lcom/zte/zms/INetProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zms/INetProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zms/INetProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zte.zms.INetProxy"

.field static final TRANSACTION_asyncRequst:I = 0x1

.field static final TRANSACTION_syncRequst:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.zte.zms.INetProxy"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/zte/zms/INetProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zte/zms/INetProxy;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.zte.zms.INetProxy"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/zte/zms/INetProxy;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/zte/zms/INetProxy;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/zte/zms/INetProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zte/zms/INetProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const v3, 0x5f4e5446

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 96
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    const-string v0, "com.zte.zms.INetProxy"

    .line 78
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v9

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    move-object/from16 v5, p0

    .line 90
    invoke-virtual/range {v5 .. v10}, Lcom/zte/zms/INetProxy$Stub;->syncRequst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Ljava/util/Map;

    move-result-object v0

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v4

    :pswitch_1
    const-string v0, "com.zte.zms.INetProxy"

    .line 49
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v9, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v9, v0

    .line 59
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 61
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v11

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v5, p0

    .line 71
    invoke-virtual/range {v5 .. v15}, Lcom/zte/zms/INetProxy$Stub;->asyncRequst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 72
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :cond_1
    const-string v0, "com.zte.zms.INetProxy"

    .line 44
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
