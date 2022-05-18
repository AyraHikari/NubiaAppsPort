.class Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prosetting/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->a(Lcom/android/preference/c;Lcn/nubia/camera/ad/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;


# direct methods
.method constructor <init>(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .line 52
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const-string v1, "pref_camera_interval_time_key"

    const-string v2, "pref_camera_interval_switch_key"

    if-gez v0, :cond_0

    .line 53
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->a(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->a(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->b(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;)Lcom/android/preference/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "off"

    .line 55
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "-1"

    .line 56
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->c(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->b(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;)Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "on"

    .line 61
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->a(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->a(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;->d(Lcn/nubia/camera/extendedUI/IntervalSlidingDrawer;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
