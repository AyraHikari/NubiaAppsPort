.class Lcn/nubia/camera/y/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/y/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/y/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/y/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/y/b;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/y/b;Lcn/nubia/camera/y/b$1;)V
    .locals 0

    .line 517
    invoke-direct {p0, p1}, Lcn/nubia/camera/y/b$a;-><init>(Lcn/nubia/camera/y/b;)V

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3

    .line 545
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 546
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    iget-object v1, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v1}, Lcn/nubia/camera/y/b;->m(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/y/b$a;Landroid/net/Uri;)V
    .locals 0

    .line 517
    invoke-direct {p0, p1}, Lcn/nubia/camera/y/b$a;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/y/b$a;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 517
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/y/b$a;->a(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 10

    .line 553
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v0}, Lcn/nubia/camera/y/b;->n(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rw"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 554
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 555
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 557
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    const-wide/16 v4, 0x0

    .line 560
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v2, v1

    move-object v3, v9

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 562
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 563
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 564
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 565
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 566
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 568
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "IntervalometerFragment"

    const-string v0, "move file fail"

    .line 570
    invoke-static {p2, v0, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v0}, Lcn/nubia/camera/y/b;->h(Lcn/nubia/camera/y/b;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/y/b;I)I

    .line 522
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    const/16 v1, 0x258

    invoke-static {v0, v1}, Lcn/nubia/camera/y/b;->b(Lcn/nubia/camera/y/b;I)I

    .line 523
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v0}, Lcn/nubia/camera/y/b;->i(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/y/i;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v1}, Lcn/nubia/camera/y/b;->h(Lcn/nubia/camera/y/b;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/y/i;->a(J)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHalve  mIntervalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v1}, Lcn/nubia/camera/y/b;->h(Lcn/nubia/camera/y/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntervalometerFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IntervalometerFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v0}, Lcn/nubia/camera/y/b;->j(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->f:Lcn/nubia/camera/af/a;

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v1}, Lcn/nubia/camera/y/b;->k(Lcn/nubia/camera/y/b;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/y/b;J)Ljava/lang/String;

    move-result-object v1

    .line 532
    new-instance v2, Lcn/nubia/camera/y/b$a$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcn/nubia/camera/y/b$a$1;-><init>(Lcn/nubia/camera/y/b$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {v2}, Lcn/nubia/camera/y/b$a$1;->start()V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "IntervalometerFragment"

    const-string v1, "onTimeLapseStart"

    .line 576
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/y/b;->b(Lcn/nubia/camera/y/b;Z)Z

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "IntervalometerFragment"

    const-string v1, "onIdle"

    .line 582
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v1, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-virtual {v1}, Lcn/nubia/camera/y/b;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "detached!"

    .line 584
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v0}, Lcn/nubia/camera/y/b;->o(Lcn/nubia/camera/y/b;)V

    .line 588
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/y/b;->b(Lcn/nubia/camera/y/b;Z)Z

    .line 589
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    const-string v1, "ui_change_interval"

    invoke-static {v0, v1}, Lcn/nubia/camera/y/b;->a(Lcn/nubia/camera/y/b;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v0}, Lcn/nubia/camera/y/b;->p(Lcn/nubia/camera/y/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v0}, Lcn/nubia/camera/y/b;->p(Lcn/nubia/camera/y/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b()V

    .line 592
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v0}, Lcn/nubia/camera/y/b;->p(Lcn/nubia/camera/y/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 593
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v0}, Lcn/nubia/camera/y/b;->p(Lcn/nubia/camera/y/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/y/b;->c(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcn/nubia/camera/y/b$a;->a:Lcn/nubia/camera/y/b;

    invoke-static {v0}, Lcn/nubia/camera/y/b;->q(Lcn/nubia/camera/y/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/k/a/a;->f()J

    :cond_1
    return-void
.end method
