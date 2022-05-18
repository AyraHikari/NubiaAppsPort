.class Lcn/nubia/camera/r/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/r/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/e;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const-string v0, "FreezeVideoFragment"

    const-string v1, "onEncoderFinish"

    .line 632
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->f(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    .line 635
    sget-boolean v1, Lcn/nubia/camera/r/a;->a:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 636
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    invoke-static {v3}, Lcn/nubia/camera/r/e;->g(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/bb/w;

    move-result-object v3

    iget-object v3, v3, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    invoke-virtual {v1, v3, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 639
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    .line 640
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "is_pending"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x1d

    if-gt v4, v5, :cond_2

    .line 642
    iget-object v4, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    invoke-static {v4}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/i;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/camera/r/i;->b:Lcn/nubia/camera/bb/u;

    iget-wide v4, v4, Lcn/nubia/camera/bb/u;->f:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 643
    iget-object v4, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    invoke-static {v4}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/i;

    move-result-object v4

    iget-object v4, v4, Lcn/nubia/camera/r/i;->b:Lcn/nubia/camera/bb/u;

    iget-wide v4, v4, Lcn/nubia/camera/bb/u;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "duration"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 646
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    iget-object v5, v5, Lcn/nubia/camera/r/e;->m:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcn/nubia/camera/ba/a;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "_size"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    iget-object v6, v6, Lcn/nubia/camera/r/e;->m:Landroid/net/Uri;

    invoke-virtual {v4, v6, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    .line 649
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    iget-object v6, v6, Lcn/nubia/camera/r/e;->l:Landroid/net/Uri;

    invoke-static {v4, v6}, Lcn/nubia/camera/ba/a;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    iget-object v5, v5, Lcn/nubia/camera/r/e;->l:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    goto :goto_0

    .line 653
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    iget-object v5, v5, Lcn/nubia/camera/r/e;->m:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    .line 654
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    iget-object v5, v5, Lcn/nubia/camera/r/e;->l:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    .line 657
    :goto_0
    new-instance v1, Lcn/nubia/l/b/g;

    iget-object v4, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    iget-object v4, v4, Lcn/nubia/camera/r/e;->m:Landroid/net/Uri;

    invoke-direct {v1, v0, v4, v3, v3}, Lcn/nubia/l/b/g;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 662
    iget-object v0, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->h(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    .line 664
    iget-object v0, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    iget-object v1, v0, Lcn/nubia/camera/r/e;->i:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;Landroid/os/ParcelFileDescriptor;)V

    .line 665
    iget-object v0, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    iget-object v1, v0, Lcn/nubia/camera/r/e;->j:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;Landroid/os/ParcelFileDescriptor;)V

    .line 666
    iget-object v0, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    iget-object v1, v0, Lcn/nubia/camera/r/e;->k:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;Landroid/os/ParcelFileDescriptor;)V

    .line 668
    iget-object v0, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    iput-object v2, v0, Lcn/nubia/camera/r/e;->i:Landroid/os/ParcelFileDescriptor;

    .line 669
    iget-object v0, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    iput-object v2, v0, Lcn/nubia/camera/r/e;->j:Landroid/os/ParcelFileDescriptor;

    .line 670
    iget-object v0, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    iput-object v2, v0, Lcn/nubia/camera/r/e;->k:Landroid/os/ParcelFileDescriptor;

    .line 672
    iget-object v0, p0, Lcn/nubia/camera/r/e$5;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->c(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/e$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/r/e$a;->sendEmptyMessage(I)Z

    return-void
.end method
