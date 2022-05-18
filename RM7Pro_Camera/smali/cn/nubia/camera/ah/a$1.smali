.class Lcn/nubia/camera/ah/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ah/a;->e(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ah/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ah/a;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcn/nubia/camera/ah/a$1;->a:Lcn/nubia/camera/ah/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 200
    iget-object p1, p0, Lcn/nubia/camera/ah/a$1;->a:Lcn/nubia/camera/ah/a;

    rsub-int/lit8 p2, p2, 0x64

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcn/nubia/camera/ah/a;->a(FZ)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 210
    iget-object p1, p0, Lcn/nubia/camera/ah/a$1;->a:Lcn/nubia/camera/ah/a;

    invoke-static {p1}, Lcn/nubia/camera/ah/a;->a(Lcn/nubia/camera/ah/a;)Lcom/android/preference/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/preference/c;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcn/nubia/camera/ah/a$1;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->b(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getProgress()I

    move-result v0

    const-string v1, "multi_exposure_parameter"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
