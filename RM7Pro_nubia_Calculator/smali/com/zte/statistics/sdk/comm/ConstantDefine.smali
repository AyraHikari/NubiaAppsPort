.class public final Lcom/zte/statistics/sdk/comm/ConstantDefine;
.super Ljava/lang/Object;
.source "ConstantDefine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/statistics/sdk/comm/ConstantDefine$RESULT;,
        Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;
    }
.end annotation


# static fields
.field public static final AES_IV:Ljava/lang/String; = "84qIhog8bk47026T"

.field public static final AES_KEY:Ljava/lang/String; = "5719j98ECnwr37V3"

.field public static final AES_VERSION_CODE:Ljava/lang/String; = "00506"

.field public static ALI_VERSION:Ljava/lang/String; = "aliveversion"

.field public static final EVENT_SEND_FLAG:Ljava/lang/String; = "ev"

.field public static final EXCEPTION_SEND_FLAG:Ljava/lang/String; = "ex"

.field public static final HTTP_OK:I = 0xc8

.field public static final LAUNCH_SEND_FLAG:Ljava/lang/String; = "la"

.field public static final NO_SEND_FLAG:Ljava/lang/String; = "ns"

.field public static final PV_SEND_FLAG:Ljava/lang/String; = "pv"

.field public static final SDK_INTERNAL:I = 0x15180

.field public static defualtUrl:Ljava/lang/String; = "https://st.ztems.com:443/dc"

.field public static recordCapacity:I = 0x2710

.field public static sessionTime:I = 0x7530


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
