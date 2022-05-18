.class Lcn/nubia/k/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/k/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:J

.field b:Z

.field final synthetic c:Lcn/nubia/k/a/a;


# direct methods
.method public constructor <init>(Lcn/nubia/k/a/a;JZ)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/nubia/k/a/a$c;->c:Lcn/nubia/k/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-wide p2, p0, Lcn/nubia/k/a/a$c;->a:J

    .line 91
    iput-boolean p4, p0, Lcn/nubia/k/a/a$c;->b:Z

    return-void
.end method
