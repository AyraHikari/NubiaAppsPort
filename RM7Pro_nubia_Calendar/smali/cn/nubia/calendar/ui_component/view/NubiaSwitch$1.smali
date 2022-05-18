.class Lcn/nubia/calendar/ui_component/view/NubiaSwitch$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NubiaSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/ui_component/view/NubiaSwitch;->animateThumbToCheckedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/ui_component/view/NubiaSwitch;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/ui_component/view/NubiaSwitch;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

    .prologue
    .line 868
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/NubiaSwitch$1;->this$0:Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 871
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/NubiaSwitch$1;->this$0:Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/NubiaSwitch$1;->this$0:Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/view/NubiaSwitch;->access$000(Lcn/nubia/calendar/ui_component/view/NubiaSwitch;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/ui_component/view/NubiaSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 872
    return-void
.end method
