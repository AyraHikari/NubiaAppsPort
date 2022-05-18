.class public final enum Lcn/nubia/music/online/data/Configuration$SDKType;
.super Ljava/lang/Enum;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/online/data/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SDKType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/music/online/data/Configuration$SDKType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/music/online/data/Configuration$SDKType;

.field public static final enum Baidu:Lcn/nubia/music/online/data/Configuration$SDKType;

.field public static final enum Xiami:Lcn/nubia/music/online/data/Configuration$SDKType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcn/nubia/music/online/data/Configuration$SDKType;

    const-string v1, "Baidu"

    invoke-direct {v0, v1, v2}, Lcn/nubia/music/online/data/Configuration$SDKType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/online/data/Configuration$SDKType;->Baidu:Lcn/nubia/music/online/data/Configuration$SDKType;

    new-instance v0, Lcn/nubia/music/online/data/Configuration$SDKType;

    const-string v1, "Xiami"

    invoke-direct {v0, v1, v3}, Lcn/nubia/music/online/data/Configuration$SDKType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/online/data/Configuration$SDKType;->Xiami:Lcn/nubia/music/online/data/Configuration$SDKType;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/music/online/data/Configuration$SDKType;

    sget-object v1, Lcn/nubia/music/online/data/Configuration$SDKType;->Baidu:Lcn/nubia/music/online/data/Configuration$SDKType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/music/online/data/Configuration$SDKType;->Xiami:Lcn/nubia/music/online/data/Configuration$SDKType;

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/music/online/data/Configuration$SDKType;->$VALUES:[Lcn/nubia/music/online/data/Configuration$SDKType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/music/online/data/Configuration$SDKType;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcn/nubia/music/online/data/Configuration$SDKType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/data/Configuration$SDKType;

    return-object v0
.end method

.method public static values()[Lcn/nubia/music/online/data/Configuration$SDKType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcn/nubia/music/online/data/Configuration$SDKType;->$VALUES:[Lcn/nubia/music/online/data/Configuration$SDKType;

    invoke-virtual {v0}, [Lcn/nubia/music/online/data/Configuration$SDKType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/music/online/data/Configuration$SDKType;

    return-object v0
.end method
