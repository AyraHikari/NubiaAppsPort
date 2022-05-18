.class Lcn/nubia/i/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field final synthetic d:Lcn/nubia/i/d;


# direct methods
.method public constructor <init>(Lcn/nubia/i/d;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcn/nubia/i/d$b;->d:Lcn/nubia/i/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p2, p0, Lcn/nubia/i/d$b;->a:I

    .line 249
    iput-object p3, p0, Lcn/nubia/i/d$b;->b:Ljava/lang/String;

    .line 250
    iput-object p4, p0, Lcn/nubia/i/d$b;->c:Ljava/lang/String;

    return-void
.end method
