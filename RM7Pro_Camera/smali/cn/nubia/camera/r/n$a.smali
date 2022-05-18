.class public Lcn/nubia/camera/r/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcn/nubia/algorithm/utils/a;

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>(Lcn/nubia/algorithm/utils/a;III)V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcn/nubia/camera/r/n$a;->a:Lcn/nubia/algorithm/utils/a;

    .line 176
    iput p2, p0, Lcn/nubia/camera/r/n$a;->b:I

    .line 177
    iput p3, p0, Lcn/nubia/camera/r/n$a;->c:I

    .line 178
    iput p4, p0, Lcn/nubia/camera/r/n$a;->d:I

    return-void
.end method
