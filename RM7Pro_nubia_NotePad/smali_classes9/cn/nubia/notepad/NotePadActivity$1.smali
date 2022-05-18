.class Lcn/nubia/notepad/NotePadActivity$1;
.super Ljava/lang/Object;
.source "NotePadActivity.java"

# interfaces
.implements Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadActivity;->checkCtaAndPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcn/nubia/notepad/NotePadActivity$1;->this$0:Lcn/nubia/notepad/NotePadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/notepad/NotePadActivity$1;->this$0:Lcn/nubia/notepad/NotePadActivity;

    invoke-virtual {v0}, Lcn/nubia/notepad/NotePadActivity;->finish()V

    .line 85
    return-void
.end method

.method public onGranted()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/notepad/NotePadActivity$1;->this$0:Lcn/nubia/notepad/NotePadActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadActivity;->access$000(Lcn/nubia/notepad/NotePadActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first force touch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    return-void
.end method
