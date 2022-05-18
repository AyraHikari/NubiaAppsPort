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
    .locals 7
    .param p0, "parcel"    # Ljava/lang/String;

    .prologue
    .line 19
    :try_start_0
    sget-object v4, Lcn/nubia/upgrade/api/RunMode;->SPLIT_CHAR:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, "s":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 21
    .local v1, "mode":Ljava/lang/String;
    const-string v4, "F"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 22
    new-instance v2, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-direct {v2, v4, v5}, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;-><init>(ILjava/lang/String;)V

    .line 30
    .end local v1    # "mode":Ljava/lang/String;
    .end local v3    # "s":[Ljava/lang/String;
    .local v2, "runMode":Lcn/nubia/upgrade/api/RunMode;
    :goto_0
    return-object v2

    .line 24
    .end local v2    # "runMode":Lcn/nubia/upgrade/api/RunMode;
    .restart local v1    # "mode":Ljava/lang/String;
    .restart local v3    # "s":[Ljava/lang/String;
    :cond_0
    new-instance v2, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;

    invoke-direct {v2}, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "runMode":Lcn/nubia/upgrade/api/RunMode;
    goto :goto_0

    .line 26
    .end local v1    # "mode":Ljava/lang/String;
    .end local v2    # "runMode":Lcn/nubia/upgrade/api/RunMode;
    .end local v3    # "s":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "RunMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unparcel error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v2, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;

    invoke-direct {v2}, Lcn/nubia/upgrade/api/RunMode$BackgroundRunMode;-><init>()V

    .restart local v2    # "runMode":Lcn/nubia/upgrade/api/RunMode;
    goto :goto_0
.end method


# virtual methods
.method public abstract parcel()Ljava/lang/String;
.end method
