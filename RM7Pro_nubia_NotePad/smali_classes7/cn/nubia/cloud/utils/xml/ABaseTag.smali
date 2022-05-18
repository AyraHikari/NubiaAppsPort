.class abstract Lcn/nubia/cloud/utils/xml/ABaseTag;
.super Ljava/lang/Object;
.source "ABaseTag.java"

# interfaces
.implements Lcn/nubia/cloud/utils/xml/XmlTag;


# instance fields
.field private final mAttributes:Landroid/os/Bundle;

.field private final mName:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mAttributes:Landroid/os/Bundle;

    .line 12
    iput-object p1, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mValue:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mAttributes:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public addAttributeResource(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mAttributes:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public addAttributes(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mAttributes:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defVaule"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mAttributes:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mAttributes:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 56
    .end local p2    # "defVaule":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public getAttributeResourceValue(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defVaule"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mAttributes:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mAttributes:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 64
    .end local p2    # "defVaule":I
    :cond_0
    return p2
.end method

.method public getAttributes()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mAttributes:Landroid/os/Bundle;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/cloud/utils/xml/ABaseTag;->mAttributes:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 29
    return-void
.end method
