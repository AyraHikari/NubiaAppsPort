.class public final enum Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;
.super Ljava/lang/Enum;
.source "ReYunSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/reyun/sdk/ReYunSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventSwitch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

.field public static final enum Off:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

.field public static final enum On:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    const-string v1, "Off"

    invoke-direct {v0, v1, v2}, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->Off:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    .line 201
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    const-string v1, "On"

    invoke-direct {v0, v1, v3}, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->On:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    .line 198
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->Off:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->On:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->ENUM$VALUES:[Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    return-object v0
.end method

.method public static values()[Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->ENUM$VALUES:[Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    array-length v1, v0

    new-array v2, v1, [Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
