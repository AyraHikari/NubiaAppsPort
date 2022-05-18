.class Lcn/nubia/music/activity/BaseDetailListActivity$a;
.super Landroid/os/AsyncTask;
.source "BaseDetailListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/BaseDetailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/BaseDetailListActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcn/nubia/music/activity/BaseDetailListActivity$a;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/activity/BaseDetailListActivity;Lcn/nubia/music/activity/BaseDetailListActivity$1;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity$a;-><init>(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcn/nubia/music/activity/BaseDetailListActivity$a;->a:Lcn/nubia/music/activity/BaseDetailListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseDetailListActivity;->access$000(Lcn/nubia/music/activity/BaseDetailListActivity;)V

    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/BaseDetailListActivity$a;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
