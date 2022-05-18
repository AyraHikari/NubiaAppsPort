.class Lcom/android/calculator2/Calculator$RotationObserver;
.super Landroid/database/ContentObserver;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotationObserver"
.end annotation


# instance fields
.field mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/calculator2/Calculator;


# direct methods
.method constructor <init>(Lcom/android/calculator2/Calculator;Landroid/os/Handler;)V
    .locals 0

    .line 2630
    iput-object p1, p0, Lcom/android/calculator2/Calculator$RotationObserver;->this$0:Lcom/android/calculator2/Calculator;

    .line 2631
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2632
    invoke-virtual {p1}, Lcom/android/calculator2/Calculator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/calculator2/Calculator$RotationObserver;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 2638
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2639
    iget-object p1, p0, Lcom/android/calculator2/Calculator$RotationObserver;->this$0:Lcom/android/calculator2/Calculator;

    iget-object v0, p0, Lcom/android/calculator2/Calculator$RotationObserver;->this$0:Lcom/android/calculator2/Calculator;

    iget-object v1, p0, Lcom/android/calculator2/Calculator$RotationObserver;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {v0, v1}, Lcom/android/calculator2/Calculator;->access$1700(Lcom/android/calculator2/Calculator;Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/android/calculator2/Calculator;->access$1602(Lcom/android/calculator2/Calculator;Z)Z

    .line 2640
    iget-object p1, p0, Lcom/android/calculator2/Calculator$RotationObserver;->this$0:Lcom/android/calculator2/Calculator;

    iget-object v0, p0, Lcom/android/calculator2/Calculator$RotationObserver;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {v0}, Lcom/android/calculator2/Calculator;->access$1600(Lcom/android/calculator2/Calculator;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/calculator2/Calculator;->setRequestedOrientation(I)V

    const-string p1, "Calculator"

    .line 2641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aaron: onChange(), autoRotationEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/calculator2/Calculator$RotationObserver;->this$0:Lcom/android/calculator2/Calculator;

    invoke-static {p0}, Lcom/android/calculator2/Calculator;->access$1600(Lcom/android/calculator2/Calculator;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method startObserver()V
    .locals 3

    .line 2645
    iget-object v0, p0, Lcom/android/calculator2/Calculator$RotationObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    .line 2646
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 2645
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method stopObserver()V
    .locals 1

    .line 2650
    iget-object v0, p0, Lcom/android/calculator2/Calculator$RotationObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
