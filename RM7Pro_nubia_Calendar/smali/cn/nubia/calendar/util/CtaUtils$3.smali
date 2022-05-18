.class Lcn/nubia/calendar/util/CtaUtils$3;
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
    .line 109
    iput-object p1, p0, Lcn/nubia/calendar/util/CtaUtils$3;->this$0:Lcn/nubia/calendar/util/CtaUtils;

    iput-object p2, p0, Lcn/nubia/calendar/util/CtaUtils$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/calendar/util/CtaUtils$3;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 114
    return-void
.end method
