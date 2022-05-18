.class public final enum Lcom/nubia/reyun/sdk/ReYunSDK$Environment;
.super Ljava/lang/Enum;
.source "ReYunSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/reyun/sdk/ReYunSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/reyun/sdk/ReYunSDK$Environment;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Debug:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

.field public static final enum Dev:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

.field private static final synthetic ENUM$VALUES:[Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

.field public static final enum Release:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

.field public static final enum Test:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    const-string v1, "Release"

    invoke-direct {v0, v1, v2}, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Release:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    .line 193
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    const-string v1, "Dev"

    invoke-direct {v0, v1, v3}, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Dev:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    .line 194
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    const-string v1, "Test"

    invoke-direct {v0, v1, v4}, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Test:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    .line 195
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    const-string v1, "Debug"

    invoke-direct {v0, v1, v5}, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Debug:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    .line 190
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Release:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Dev:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Test:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->Debug:Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->ENUM$VALUES:[Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/reyun/sdk/ReYunSDK$Environment;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    return-object v0
.end method

.method public static values()[Lcom/nubia/reyun/sdk/ReYunSDK$Environment;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDK$Environment;->ENUM$VALUES:[Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    array-length v1, v0

    new-array v2, v1, [Lcom/nubia/reyun/sdk/ReYunSDK$Environment;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
