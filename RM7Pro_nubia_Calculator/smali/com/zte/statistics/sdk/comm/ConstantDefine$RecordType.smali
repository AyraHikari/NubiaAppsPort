.class public final enum Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;
.super Ljava/lang/Enum;
.source "ConstantDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/comm/ConstantDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum DAILY:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum DEVICE:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum EVENT:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum EXCEPTION:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum LAUNCH:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

.field public static final enum PAGEVIEW:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;


# instance fields
.field private final mTypeValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "DEVICE"

    const-string v2, "device"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->DEVICE:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "PAGEVIEW"

    const-string v2, "pv"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->PAGEVIEW:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "LAUNCH"

    const-string v2, "launch"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->LAUNCH:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "EVENT"

    const-string v2, "event"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EVENT:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "EXCEPTION"

    const-string v2, "exception"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EXCEPTION:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    .line 14
    new-instance v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const-string v1, "DAILY"

    const-string v2, "daily"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->DAILY:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    const/4 v0, 0x6

    .line 12
    new-array v0, v0, [Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->DEVICE:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->PAGEVIEW:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->LAUNCH:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EVENT:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->EXCEPTION:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->DAILY:Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->$VALUES:[Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->mTypeValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;
    .locals 1

    .line 12
    const-class v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    return-object p0
.end method

.method public static values()[Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;
    .locals 1

    .line 12
    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->$VALUES:[Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    invoke-virtual {v0}, [Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;

    return-object v0
.end method


# virtual methods
.method public getTypeValue()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zte/statistics/sdk/comm/ConstantDefine$RecordType;->mTypeValue:Ljava/lang/String;

    return-object p0
.end method
