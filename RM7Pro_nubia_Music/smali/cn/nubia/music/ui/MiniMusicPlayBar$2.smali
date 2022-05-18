.class Lcn/nubia/music/ui/MiniMusicPlayBar$2;
.super Landroid/content/BroadcastReceiver;
.source "MiniMusicPlayBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/ui/MiniMusicPlayBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/ui/MiniMusicPlayBar;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 493
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 495
    const-string v1, "cn.nubia.music.preset.seekchanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$000(Lcn/nubia/music/ui/MiniMusicPlayBar;)J

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    const-string v1, "cn.nubia.music.preset.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 501
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$600(Lcn/nubia/music/ui/MiniMusicPlayBar;)Z

    move-result v1

    .line 502
    if-eqz v1, :cond_2

    .line 503
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$700(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    .line 505
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$800(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    .line 506
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$900(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 507
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$900(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_0

    .line 511
    :cond_2
    const-string v0, "playing"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 512
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020123

    .line 513
    :goto_1
    iget-object v3, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v3}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$1000(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 515
    const-string v0, "innerstate"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 516
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eq v0, v5, :cond_4

    .line 517
    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v2}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$1100(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    .line 523
    :goto_2
    if-ne v0, v5, :cond_5

    .line 524
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$1200(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0b0023

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 529
    :goto_3
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0, p2, v1}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$1400(Lcn/nubia/music/ui/MiniMusicPlayBar;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 512
    :cond_3
    const v0, 0x7f020124

    goto :goto_1

    .line 519
    :cond_4
    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v2}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$000(Lcn/nubia/music/ui/MiniMusicPlayBar;)J

    .line 520
    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v2}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$800(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    goto :goto_2

    .line 526
    :cond_5
    const-string v0, "artist"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v2, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$1300(Lcn/nubia/music/ui/MiniMusicPlayBar;Ljava/lang/String;)V

    goto :goto_3

    .line 530
    :cond_6
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 531
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$600(Lcn/nubia/music/ui/MiniMusicPlayBar;)Z

    move-result v0

    .line 532
    if-eqz v0, :cond_7

    .line 533
    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v1}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$800(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    .line 534
    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v1}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$900(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 535
    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v1}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$900(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 538
    :cond_7
    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v1, p2, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$1400(Lcn/nubia/music/ui/MiniMusicPlayBar;Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 540
    :cond_8
    const-string v1, "com.bean.music.preset.CurrentAlbumChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 544
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$1100(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    goto/16 :goto_0

    .line 545
    :cond_9
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$800(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    goto/16 :goto_0
.end method
