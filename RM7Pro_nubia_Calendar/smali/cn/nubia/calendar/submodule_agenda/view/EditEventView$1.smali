.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$1;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->populateTimezone(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 750
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 753
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1900(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 754
    return-void
.end method
