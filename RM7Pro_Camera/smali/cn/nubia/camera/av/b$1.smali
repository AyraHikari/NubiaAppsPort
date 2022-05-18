.class Lcn/nubia/camera/av/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/av/b;->a(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/camera/av/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/av/b;Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcn/nubia/camera/av/b$1;->b:Lcn/nubia/camera/av/b;

    iput-object p2, p0, Lcn/nubia/camera/av/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/av/b$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/camera/av/c;->a(Ljava/lang/String;)V

    return-void
.end method
