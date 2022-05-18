.class Lcn/nubia/camera/w/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prosetting/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/w/a;->m(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/w/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/w/a;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcn/nubia/camera/w/a$5;->a:Lcn/nubia/camera/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    .line 631
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    .line 633
    iget-object v3, p0, Lcn/nubia/camera/w/a$5;->a:Lcn/nubia/camera/w/a;

    invoke-static {v3}, Lcn/nubia/camera/w/a;->x(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v3, p0, Lcn/nubia/camera/w/a$5;->a:Lcn/nubia/camera/w/a;

    sget-object v4, Lcn/nubia/camera/w/b;->h:Lcn/nubia/camera/w/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_0
    iget-object v3, p0, Lcn/nubia/camera/w/a$5;->a:Lcn/nubia/camera/w/a;

    invoke-static {v3}, Lcn/nubia/camera/w/a;->x(Lcn/nubia/camera/w/a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    iget-object v3, p0, Lcn/nubia/camera/w/a$5;->a:Lcn/nubia/camera/w/a;

    sget-object v4, Lcn/nubia/camera/w/b;->h:Lcn/nubia/camera/w/b;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 639
    :goto_0
    iget-object v3, p0, Lcn/nubia/camera/w/a$5;->a:Lcn/nubia/camera/w/a;

    invoke-static {v3}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    const-string v4, "pref_camera_exposure_compensation"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 641
    iget-object v0, p0, Lcn/nubia/camera/w/a$5;->a:Lcn/nubia/camera/w/a;

    sget-object v3, Lcn/nubia/camera/w/b;->h:Lcn/nubia/camera/w/b;

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {v0, v3, p1}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;Lcn/nubia/camera/w/b;Ljava/lang/String;)V

    .line 642
    iget-object p1, p0, Lcn/nubia/camera/w/a$5;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->y(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;Lcn/nubia/camera/prosetting/ui/b;)V

    return-void
.end method
