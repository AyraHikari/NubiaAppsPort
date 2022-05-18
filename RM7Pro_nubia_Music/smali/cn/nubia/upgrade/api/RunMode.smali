.class public abstract Lcn/nubia/upgrade/api/RunMode;
.super Ljava/lang/Object;
.source "RunMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;,
        Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;
    }
.end annotation


# static fields
.field private static final MODE_B:Ljava/lang/String; = "B"

.field private static final MODE_F:Ljava/lang/String; = "F"

.field private static final SPLIT_CHAR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RunMode"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/upgrade/api/RunMode;->SPLIT_CHAR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcn/nubia/upgrade/api/RunMode;->SPLIT_CHAR:Ljava/lang/String;

    return-object v0
.end method

.method public static unparcel(Ljava/lang/String;)Lcn/nubia/upgrade/api/RunMode;
    .locals 4

    .prologue
    .line 19
    :try_start_0
    sget-object v0, Lcn/nubia/upgrade/api/RunMode;->SPLIT_CHAR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 20
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 21
    const-string v2, "F"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;-><init>(ILjava/lang/String;)V

    .line 30
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const-string v0, "RunMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unparcel error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public abstract parcel()Ljava/lang/String;
.end method
