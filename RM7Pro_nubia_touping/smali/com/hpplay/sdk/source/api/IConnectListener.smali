.class public interface abstract Lcom/hpplay/sdk/source/api/IConnectListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONNECT_CONFRENCE_CHECK_LAN:I = 0x33c31

.field public static final CONNECT_ERROR_BAD_REQUEST:I = 0x33c30

.field public static final CONNECT_ERROR_FAILED:I = 0x33c2a

.field public static final CONNECT_ERROR_IM_BLACKLIST:I = 0x33c2f

.field public static final CONNECT_ERROR_IM_REJECT:I = 0x33c2d

.field public static final CONNECT_ERROR_IM_TIMEOUT:I = 0x33c2e

.field public static final CONNECT_ERROR_IM_WAITTING:I = 0x33c2c

.field public static final CONNECT_ERROR_IO:I = 0x33c2b

.field public static final CONNECT_INFO_DISCONNECT:I = 0x33c20

.field public static final CONNECT_INFO_DISCONNECT_SUCCESS:I = 0x33c21

.field public static final CONNECT_PINCODE_ERROR:I = 0x33c33

.field public static final CONNECT_REQUEST_FAILED:I = 0x33c32

.field public static final TYPE_DLNA:I = 0x3

.field public static final TYPE_IM:I = 0x4

.field public static final TYPE_LELINK:I = 0x1

.field public static final TYPE_NEW_LELINK:I = 0x5


# virtual methods
.method public abstract onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V
.end method

.method public abstract onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V
.end method
