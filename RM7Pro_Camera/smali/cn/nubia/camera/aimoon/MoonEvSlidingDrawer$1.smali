.class Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prosetting/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    .line 68
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->c(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-static {v1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->a(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-static {v2}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->b(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)I

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, p1

    if-nez v2, :cond_0

    const/high16 v2, 0x41400000    # 12.0f

    sub-float/2addr v3, v2

    :cond_0
    float-to-int v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->e(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-static {v1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->d(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Ljava/text/DecimalFormat;

    move-result-object v1

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->f(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->d(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Ljava/text/DecimalFormat;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->a(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->g(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-static {v3}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->d(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Ljava/text/DecimalFormat;

    move-result-object v3

    float-to-double v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->f(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-static {v2}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->d(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Ljava/text/DecimalFormat;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->a(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->h(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 80
    iget-object p1, p0, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$1;->a:Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->h(Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;)Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer$a;->a()V

    :cond_2
    return-void
.end method
