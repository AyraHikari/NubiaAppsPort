.class public Lcom/android/calculator2/CalculatorApplication;
.super Landroid/app/Application;
.source "CalculatorApplication.java"


# static fields
.field private static instance:Lcom/android/calculator2/CalculatorApplication;

.field private static mAppContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 66
    sget-object v0, Lcom/android/calculator2/CalculatorApplication;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/calculator2/CalculatorApplication;
    .locals 1

    .line 37
    sget-object v0, Lcom/android/calculator2/CalculatorApplication;->instance:Lcom/android/calculator2/CalculatorApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 42
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 43
    sput-object p0, Lcom/android/calculator2/CalculatorApplication;->instance:Lcom/android/calculator2/CalculatorApplication;

    .line 45
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 46
    invoke-static {}, Lcom/android/calculator2/SystemUtil;->isNOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 53
    :cond_0
    sput-object p0, Lcom/android/calculator2/CalculatorApplication;->mAppContext:Landroid/content/Context;

    .line 55
    invoke-static {}, Lcom/android/calculator2/ZteTrackManager;->getInstance()Lcom/android/calculator2/ZteTrackManager;

    move-result-object p0

    sget-object v0, Lcom/android/calculator2/CalculatorApplication;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/calculator2/ZteTrackManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 61
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
