.class public Lcn/nubia/camera/prosetting/ui/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/prosetting/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prosetting/ui/a;

.field private b:F

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prosetting/ui/a;FLjava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/a$a;->a:Lcn/nubia/camera/prosetting/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput p2, p0, Lcn/nubia/camera/prosetting/ui/a$a;->b:F

    .line 205
    iput-object p3, p0, Lcn/nubia/camera/prosetting/ui/a$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 209
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/a$a;->b:F

    return v0
.end method
