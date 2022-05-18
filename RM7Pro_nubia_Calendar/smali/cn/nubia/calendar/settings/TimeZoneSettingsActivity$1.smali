.class Lcn/nubia/calendar/settings/TimeZoneSettingsActivity$1;
.super Ljava/lang/Object;
.source "TimeZoneSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity$1;->this$0:Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity$1;->this$0:Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;

    invoke-virtual {v0}, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->finish()V

    .line 99
    return-void
.end method
