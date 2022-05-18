.class Lcn/nubia/calendar/settings/NewCitiesActivity$1;
.super Ljava/lang/Object;
.source "NewCitiesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/settings/NewCitiesActivity;->updateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/settings/NewCitiesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 513
    iput-object p1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$1;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 516
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity$1;->this$0:Lcn/nubia/calendar/settings/NewCitiesActivity;

    invoke-static {v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->access$1100(Lcn/nubia/calendar/settings/NewCitiesActivity;)V

    .line 517
    return-void
.end method
