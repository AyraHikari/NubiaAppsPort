.class public abstract Lcn/nubia/touping/Utils/util/FloatProperty;
.super Landroid/util/Property;
.source "FloatProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property",
        "<TT;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    .local p0, "this":Lcn/nubia/touping/Utils/util/FloatProperty;, "Lcn/nubia/touping/Utils/util/FloatProperty<TT;>;"
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;Ljava/lang/Float;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcn/nubia/touping/Utils/util/FloatProperty;, "Lcn/nubia/touping/Utils/util/FloatProperty<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/touping/Utils/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 46
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lcn/nubia/touping/Utils/util/FloatProperty;, "Lcn/nubia/touping/Utils/util/FloatProperty<TT;>;"
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/touping/Utils/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method
