.class public Lcn/nubia/analytic/util/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field public static DEBUG:Z = false

.field public static final ROOT_PATH:Ljava/lang/String; = "analytic"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/analytic/util/AppConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcn/nubia/analytic/util/AppConfig;->DEBUG:Z

    return v0
.end method
