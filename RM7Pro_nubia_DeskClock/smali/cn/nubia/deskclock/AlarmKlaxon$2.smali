.class Lcn/nubia/deskclock/AlarmKlaxon$2;
.super Ljava/lang/Object;
.source "AlarmKlaxon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/AlarmKlaxon;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AlarmKlaxon;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 150
    iput-object p1, p0, Lcn/nubia/deskclock/AlarmKlaxon$2;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$2;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$102(Lcn/nubia/deskclock/AlarmKlaxon;Z)Z

    .line 154
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$2;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->access$200(Lcn/nubia/deskclock/AlarmKlaxon;)V

    .line 155
    return-void
.end method
