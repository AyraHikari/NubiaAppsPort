.class Lcn/nubia/touping/WiredSettingsActivity$2;
.super Ljava/lang/Object;
.source "WiredSettingsActivity.java"

# interfaces
.implements Lcn/nubia/touping/Dialog/ScreenOrientationDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/WiredSettingsActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/WiredSettingsActivity;


# direct methods
.method constructor <init>(Lcn/nubia/touping/WiredSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/WiredSettingsActivity;

    .prologue
    .line 208
    iput-object p1, p0, Lcn/nubia/touping/WiredSettingsActivity$2;->this$0:Lcn/nubia/touping/WiredSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChooseLandscape()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcn/nubia/touping/WiredSettingsActivity$2;->this$0:Lcn/nubia/touping/WiredSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->access$200(Lcn/nubia/touping/WiredSettingsActivity;Z)V

    .line 212
    return-void
.end method

.method public onChoosePortrait()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcn/nubia/touping/WiredSettingsActivity$2;->this$0:Lcn/nubia/touping/WiredSettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->access$200(Lcn/nubia/touping/WiredSettingsActivity;Z)V

    .line 217
    return-void
.end method
