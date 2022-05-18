.class Lcn/nubia/camera/debugmode/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/debugmode/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcn/nubia/camera/debugmode/a$b;->a:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcn/nubia/camera/debugmode/a$b;->c:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lcn/nubia/camera/debugmode/a$b;->b:Ljava/lang/String;

    return-void
.end method
