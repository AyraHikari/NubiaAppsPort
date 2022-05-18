.class final Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerArgs"
.end annotation


# instance fields
.field public callback:Ljava/lang/Runnable;

.field public context:Landroid/content/Context;

.field public defaultResource:I

.field public item:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$AttendeeItem;

.field public result:Ljava/lang/Object;

.field public uri:Landroid/net/Uri;

.field public view:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/ContactsAsyncHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/ContactsAsyncHelper$1;

    .prologue
    .line 67
    invoke-direct {p0}, Lcn/nubia/calendar/ContactsAsyncHelper$WorkerArgs;-><init>()V

    return-void
.end method
