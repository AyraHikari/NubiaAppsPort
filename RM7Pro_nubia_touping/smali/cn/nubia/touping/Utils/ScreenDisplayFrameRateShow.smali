.class public Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;
.super Ljava/lang/Object;
.source "ScreenDisplayFrameRateShow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenDisplayFrameRateShow"

.field private static instance:Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;


# instance fields
.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private screenDisplayFrameRateNum:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->instance:Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;

    invoke-direct {v0}, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;-><init>()V

    sput-object v0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->instance:Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;

    .line 33
    :cond_0
    sget-object v0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->instance:Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hideScreenDisplayFrameRate(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->view:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 86
    iput-object v2, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->mWindowManager:Landroid/view/WindowManager;

    .line 87
    iput-object v2, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->screenDisplayFrameRateNum:Landroid/widget/TextView;

    .line 89
    :cond_0
    return-void
.end method

.method private makeAdjustDialogParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 93
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 94
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 95
    const v1, 0x4000038

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 99
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 100
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 101
    const/16 v1, 0x14

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 102
    const/16 v1, 0x3c

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 103
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 104
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 105
    const-string v1, "ScreenDisplayFrameRateShow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    return-object v0
.end method

.method private showScreenDisplayFrameRate(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v5, "display"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 53
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    .line 54
    .local v2, "displays":[Landroid/view/Display;
    const/4 v0, 0x0

    .line 55
    .local v0, "display":Landroid/view/Display;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 56
    const-string v5, "ScreenDisplayFrameRateShow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v5, "ScreenDisplayFrameRateShow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v7}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v5, "ScreenDisplayFrameRateShow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " flags = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v7}, Landroid/view/Display;->getFlags()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v5, "ScreenDisplayFrameRateShow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v7}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v5, "HDMI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 62
    aget-object v0, v2, v3

    .line 72
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v5, :cond_1

    .line 73
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->mWindowManager:Landroid/view/WindowManager;

    .line 75
    :cond_1
    iget-object v5, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->view:Landroid/view/View;

    if-nez v5, :cond_2

    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040057

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->view:Landroid/view/View;

    .line 78
    :cond_2
    iget-object v5, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->view:Landroid/view/View;

    const v6, 0x7f0e0123

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->screenDisplayFrameRateNum:Landroid/widget/TextView;

    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->makeAdjustDialogParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 80
    iget-object v5, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->view:Landroid/view/View;

    iget-object v7, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    return-void

    .line 55
    .restart local v4    # "name":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public HdmiPluggedChanged(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "plugged"    # Z

    .prologue
    .line 49
    return-void
.end method

.method public refreshScreenDisplayFrameRateView(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenDisplayFrameRate"    # I

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->screenDisplayFrameRateNum:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HZ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->view:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/touping/Utils/ScreenDisplayFrameRateShow;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
