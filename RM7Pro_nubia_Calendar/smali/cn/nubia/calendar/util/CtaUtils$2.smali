.class Lcn/nubia/calendar/util/CtaUtils$2;
.super Ljava/lang/Object;
.source "CtaUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/util/CtaUtils;->ctaWarning(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/util/CtaUtils;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/util/CtaUtils;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/util/CtaUtils;

    .prologue
    .line 119
    iput-object p1, p0, Lcn/nubia/calendar/util/CtaUtils$2;->this$0:Lcn/nubia/calendar/util/CtaUtils;

    iput-object p2, p0, Lcn/nubia/calendar/util/CtaUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 122
    iget-object v1, p0, Lcn/nubia/calendar/util/CtaUtils$2;->this$0:Lcn/nubia/calendar/util/CtaUtils;

    iget-object v2, p0, Lcn/nubia/calendar/util/CtaUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/CtaUtils;->access$000(Lcn/nubia/calendar/util/CtaUtils;Landroid/content/Context;)I

    move-result v0

    .line 123
    .local v0, "request":I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 124
    iget-object v1, p0, Lcn/nubia/calendar/util/CtaUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 126
    :cond_0
    return-void
.end method
