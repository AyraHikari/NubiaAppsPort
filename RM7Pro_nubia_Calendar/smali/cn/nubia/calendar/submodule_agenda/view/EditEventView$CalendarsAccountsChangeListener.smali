.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAccountsChangeListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarsAccountsChangeListener"
.end annotation


# instance fields
.field private editEventViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/calendar/submodule_agenda/view/EditEventView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 1
    .param p1, "editEventView"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 2116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAccountsChangeListener;->editEventViewWR:Ljava/lang/ref/WeakReference;

    .line 2118
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2122
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAccountsChangeListener;->editEventViewWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 2123
    .local v0, "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    if-eqz v0, :cond_0

    .line 2124
    invoke-static {v0, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2900(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 2126
    :cond_0
    return-void
.end method
