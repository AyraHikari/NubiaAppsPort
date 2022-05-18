.class Lcn/nubia/camera/a/a$3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/a/a;->ay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/a;Landroid/os/Handler;)V
    .locals 0

    .line 1746
    iput-object p1, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1749
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "system_keys_navigationbar"

    .line 1750
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1751
    iget-object p2, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-static {p2}, Lcn/nubia/camera/a/a;->j(Lcn/nubia/camera/a/a;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-static {p2}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-static {p2}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->p()Z

    move-result p2

    if-nez p2, :cond_7

    .line 1752
    iget-object p2, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {p2}, Lcn/nubia/camera/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_0

    move v1, v2

    .line 1753
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-static {p1}, Lcn/nubia/camera/a/a;->j(Lcn/nubia/camera/a/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/a/d;

    .line 1754
    invoke-interface {p2, v1}, Lcn/nubia/camera/a/d;->a(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "navi_ges_flag"

    .line 1757
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "fringe_full_black_set"

    .line 1758
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string p1, "screen_in_use"

    .line 1760
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1762
    iget-object p2, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {p2}, Lcn/nubia/camera/a/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-le p1, v2, :cond_3

    .line 1764
    iget-object p2, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-static {p2}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->k()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1765
    iget-object p1, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->finish()V

    return-void

    :cond_3
    and-int/lit8 p2, p1, 0x1

    and-int/lit8 v0, p2, 0x1

    .line 1769
    iget-object v1, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-static {v1}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->G()I

    move-result v1

    if-ne v0, v1, :cond_4

    return-void

    .line 1773
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-static {v0}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->p()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1774
    iget-object v0, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-static {v0}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/camera/ad/a;->a(I)V

    .line 1775
    iget-object v0, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-static {v0}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1776
    iget-object v0, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-static {v0}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/camera/aw/a;->b(I)V

    .line 1779
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NUBIA_CURRENT_SCREEN_ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", currentState = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityBase"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1759
    :cond_6
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/a/a$3;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->finish()V

    :cond_7
    :goto_2
    return-void
.end method
