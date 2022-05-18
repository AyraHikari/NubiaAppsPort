.class Lcom/android/setting/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setting/e;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/setting/e;


# direct methods
.method constructor <init>(Lcom/android/setting/e;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/android/setting/e$1;->a:Lcom/android/setting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    const-string p1, "MoreSettingsFragment"

    const-string v0, "onAnimationEnd"

    .line 244
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object p1, p0, Lcom/android/setting/e$1;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->a(Lcom/android/setting/e;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    iget-object p1, p0, Lcom/android/setting/e$1;->a:Lcom/android/setting/e;

    invoke-static {p1}, Lcom/android/setting/e;->b(Lcom/android/setting/e;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    const-string p1, "MoreSettingsFragment"

    const-string v0, "onAnimationRepeat"

    .line 251
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const-string p1, "MoreSettingsFragment"

    const-string v0, "onAnimationStart"

    .line 239
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
