.class Lcn/nubia/deskclock/activity/NewCitiesActivity$2;
.super Ljava/lang/Object;
.source "NewCitiesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/activity/NewCitiesActivity;->initView()V
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
    .line 190
    iput-object p1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$2;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity$2;->this$0:Lcn/nubia/deskclock/activity/NewCitiesActivity;

    invoke-virtual {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->finish()V

    .line 194
    return-void
.end method
