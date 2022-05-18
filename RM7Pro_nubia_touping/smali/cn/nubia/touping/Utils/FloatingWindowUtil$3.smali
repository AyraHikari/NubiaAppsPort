.class Lcn/nubia/touping/Utils/FloatingWindowUtil$3;
.super Ljava/lang/Object;
.source "FloatingWindowUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/FloatingWindowUtil;->showAdjustQualityDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/FloatingWindowUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/FloatingWindowUtil;

    .prologue
    .line 303
    iput-object p1, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$3;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 306
    iget-object v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$3;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-static {v2}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->access$100(Lcn/nubia/touping/Utils/FloatingWindowUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/touping/Utils/TrackUtils;->sendBundleForSuggestPop(Landroid/content/Context;)V

    .line 307
    iget-object v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$3;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-static {v2}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->access$100(Lcn/nubia/touping/Utils/FloatingWindowUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 308
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 309
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SCREEN_PROJECTION_QUALITY_20210706"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    iget-object v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$3;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-static {v2}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->access$100(Lcn/nubia/touping/Utils/FloatingWindowUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/touping/Utils/LeBoOprate;->changeMirrorQuality(Landroid/content/Context;)V

    .line 312
    iget-object v2, p0, Lcn/nubia/touping/Utils/FloatingWindowUtil$3;->this$0:Lcn/nubia/touping/Utils/FloatingWindowUtil;

    invoke-static {v2}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->access$200(Lcn/nubia/touping/Utils/FloatingWindowUtil;)V

    .line 313
    return-void
.end method
