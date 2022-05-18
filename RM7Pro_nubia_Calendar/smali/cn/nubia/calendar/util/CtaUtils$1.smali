.class Lcn/nubia/calendar/util/CtaUtils$1;
.super Ljava/lang/Object;
.source "CtaUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 95
    iput-object p1, p0, Lcn/nubia/calendar/util/CtaUtils$1;->this$0:Lcn/nubia/calendar/util/CtaUtils;

    iput-object p2, p0, Lcn/nubia/calendar/util/CtaUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcn/nubia/calendar/util/CtaUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/calendar/util/CtaUtils;->startPrivacy(Landroid/content/Context;)V

    .line 99
    return-void
.end method
