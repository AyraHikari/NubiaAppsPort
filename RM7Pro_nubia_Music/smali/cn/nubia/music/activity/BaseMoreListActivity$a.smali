.class Lcn/nubia/music/activity/BaseMoreListActivity$a;
.super Landroid/os/AsyncTask;
.source "BaseMoreListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/BaseMoreListActivity;
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
.field final synthetic a:Lcn/nubia/music/activity/BaseMoreListActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/music/activity/BaseMoreListActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$a;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/activity/BaseMoreListActivity;Lcn/nubia/music/activity/BaseMoreListActivity$1;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity$a;-><init>(Lcn/nubia/music/activity/BaseMoreListActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$a;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$000(Lcn/nubia/music/activity/BaseMoreListActivity;)V

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity$a;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
