.class public Lcom/zte/dualLcdManager/DisplayModeManager;
.super Ljava/lang/Object;
.source "DisplayModeManager.java"


# static fields
.field public static final DISPLAY_MODE_DOCKED:I = 0x4

.field public static final DISPLAY_MODE_MIRROR:I = 0x8

.field public static final DISPLAY_MODE_NULL:I = 0x0

.field public static final DISPLAY_MODE_SINGLE:I = 0x1

.field public static final DISPLAY_MODE_ZOOM:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/dualLcdManager/DisplayModeManager;
    .locals 0

    .line 17
    new-instance p0, Lcom/zte/dualLcdManager/DisplayModeManager;

    invoke-direct {p0}, Lcom/zte/dualLcdManager/DisplayModeManager;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getCurrentMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public switchMode(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
