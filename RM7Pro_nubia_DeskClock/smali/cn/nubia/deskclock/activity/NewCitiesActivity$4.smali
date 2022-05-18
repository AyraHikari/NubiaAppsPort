.class Lcn/nubia/deskclock/activity/NewCitiesActivity$4;
.super Ljava/lang/Object;
.source "NewCitiesActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/NewCitiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 415
    iput-object p1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$4;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "queryText"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string v0, "NewCitiesActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryTextChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$4;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$502(Lcn/nubia/deskclock/activity/NewCitiesActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$4;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$600(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$4;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$4;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->access$700(Lcn/nubia/deskclock/activity/NewCitiesActivity;)V

    .line 426
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 417
    const-string v0, "NewCitiesActivity"

    const-string v1, "onQueryTextSubmit"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x0

    return v0
.end method
