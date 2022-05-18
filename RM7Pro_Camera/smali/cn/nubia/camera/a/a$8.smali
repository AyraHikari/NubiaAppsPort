.class Lcn/nubia/camera/a/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/l/a/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/a/a;->am()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/a;)V
    .locals 0

    .line 1407
    iput-object p1, p0, Lcn/nubia/camera/a/a$8;->a:Lcn/nubia/camera/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/database/Cursor;
    .locals 1

    .line 1410
    iget-object v0, p0, Lcn/nubia/camera/a/a$8;->a:Lcn/nubia/camera/a/a;

    invoke-static {v0}, Lcn/nubia/camera/camerafamily/a;->a(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
