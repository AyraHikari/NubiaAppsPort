.class Lcn/nubia/improve/category/CategoryTask$1;
.super Ljava/lang/Object;
.source "CategoryTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/category/CategoryTask;->doWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/category/CategoryTask;


# direct methods
.method constructor <init>(Lcn/nubia/improve/category/CategoryTask;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/improve/category/CategoryTask$1;->this$0:Lcn/nubia/improve/category/CategoryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryTask$1;->this$0:Lcn/nubia/improve/category/CategoryTask;

    invoke-virtual {v0}, Lcn/nubia/improve/category/CategoryTask;->onDoInBackground()V

    return-void
.end method
