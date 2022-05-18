.class Lcn/nubia/calendar/CalendarSettingsActivity$2;
.super Ljava/lang/Object;
.source "CalendarSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/CalendarSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/CalendarSettingsActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/CalendarSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/CalendarSettingsActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcn/nubia/calendar/CalendarSettingsActivity$2;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity$2;->this$0:Lcn/nubia/calendar/CalendarSettingsActivity;

    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarSettingsActivity;->finish()V

    .line 166
    return-void
.end method
